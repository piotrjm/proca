class Customer < ApplicationRecord
  delegate :url_helpers, to: 'Rails.application.routes'

  # relations
  has_many :projects, dependent: :nullify

  def fullname
    "#{name}"
  end

  def name_as_link
    "<a href=#{url_helpers.customer_path(self)}>#{self.name}</a>".html_safe
  end

  # Scope for select2: "customer_select"
  # * parameters   :
  #   * +query_str+ -> string for search. 
  #   Eg.: "Jan ski@"
  # * result   :
  #   * +scope+ -> collection 
  #
  scope :finder_customer, ->(q) { where( create_sql_string("#{q}") ) }

  # Method create SQL query string for finder select2: "customer_select"
  # * parameters   :
  #   * +query_str+ -> string for search. 
  #   Eg.: "Jan ski@"
  # * result   :
  #   * +sql_string+ -> string for SQL WHERE... 
  #   Eg.: "((users.name ilike '%Jan%' OR users.email ilike '%Jan%') AND (customers.name ilike '%ski@%' OR customers.email ilike '%ski@%'))"
  #
  def self.create_sql_string(query_str)
    query_str.split.map { |par| one_param_sql(par) }.join(" AND ")
  end

  # Method for glue parameters in create_sql_string
  # * parameters   :
  #   * +one_query_word+ -> word for search. 
  #   Eg.: "Jan"
  # * result   :
  #   * +sql_string+ -> SQL string query for one word 
  #   Eg.: "(customers.name ilike '%Jan%' OR customers.email ilike '%Jan%')"
  #
  def self.one_param_sql(one_query_word)
    #escaped_query_str = sanitize("%#{query_str}%")
    escaped_query_str = Loofah.fragment("'%#{one_query_word}%'").text
    "(" + %w(customers.name).map { |column| "#{column} ilike #{escaped_query_str}" }.join(" OR ") + ")"
  end

end
