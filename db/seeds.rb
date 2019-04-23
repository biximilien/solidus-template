# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

# Canadian Zones
Spree::Zone.create([
  {
    name: 'Alberta',
    description: 'Alberta (Canada)',
    states: [Spree::State.find_by(name: 'Alberta')]
  },
  {
    name: 'British Columbia',
    description: 'British Columbia (Canada)',
    states: [Spree::State.find_by(name: 'British Columbia')]
  },
  {
    name: 'Canada',
    description: 'Canada',
    countries: [Spree::Country.find_by(name: 'Canada')]
  },
  {
    name: 'Manitoba',
    description: 'Manitoba (Canada)',
    states: [Spree::State.find_by(name: 'Manitoba')]
  },
  {
    name: 'New Brunswick',
    description: 'New Brunswick (Canada)',
    states: [Spree::State.find_by(name: 'New Brunswick')]
  },
  {
    name: 'Newfoundland and Labrador',
    description: 'Newfoundland and Labrador (Canada)',
    states: [Spree::State.find_by(name: 'Newfoundland and Labrador')]
  },
  {
    name: 'Northwest Territories',
    description: 'Northwest Territories (Canada)',
    states: [Spree::State.find_by(name: 'Northwest Territories')]
  },
  {
    name: 'Nova Scotia',
    description: 'Nova Scotia (Canada)',
    states: [Spree::State.find_by(name: 'Nova Scotia')]
  },
  {
    name: 'Nunavut',
    description: 'Nunavut (Canada)',
    states: [Spree::State.find_by(name: 'Nunavut')]
  },
  {
    name: 'Ontario',
    description: 'Ontario (Canada)',
    states: [Spree::State.find_by(name: 'Ontario')]
  },
  {
    name: 'Prince Edward Island',
    description: 'Prince Edward Island (Canada)',
    states: [Spree::State.find_by(name: 'Prince Edward Island')]
  },
  {
    name: 'Quebec',
    description: 'Quebec (Canada)',
    states: [Spree::State.find_by(name: 'Quebec')]
  },
  {
    name: 'Saskatchewan',
    description: 'Saskatchewan (Canada)',
    states: [Spree::State.find_by(name: 'Saskatchewan')]
  },
  {
    name: 'Yukon Territory',
    description: 'Yukon Territory (Canada)',
    states: [Spree::State.find_by(name: 'Yukon Territory')]
  }
])

# US Zones
Spree::Zone.create([
  {
    name: 'United States',
    description: 'United States',
    countries: [Spree::Country.find_by(name: 'United States')]
  }
])

# Canadian taxes
Spree::TaxCategory.create([
  {
    name: 'Canada',
    description: 'Canada',
    is_default: true
  }
])

# Spree::TaxRate(id: integer, amount: decimal, zone_id: integer,
# included_in_price: boolean, created_at: datetime, updated_at: datetime,
# name: string, show_rate_in_label: boolean, deleted_at: datetime,
# starts_at: datetime, expires_at: datetime)
Spree::TaxRate.create([
  {
    amount: 0.09975,
    zone_id: Spree::Zone.find_by(name: 'Quebec').id,
    included_in_price: false,
    name: 'Quebec Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.05,
    zone_id: Spree::Zone.find_by(name: 'Canada').id,
    included_in_price: false,
    name: 'Goods and Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.07,
    zone_id: Spree::Zone.find_by(name: 'British Columbia').id,
    included_in_price: false,
    name: 'Provincial Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.08,
    zone_id: Spree::Zone.find_by(name: 'Manitoba').id,
    included_in_price: false,
    name: 'Provincial Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.1,
    zone_id: Spree::Zone.find_by(name: 'New Brunswick').id,
    included_in_price: false,
    name: 'Harmonized Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.1,
    zone_id: Spree::Zone.find_by(name: 'Newfoundland and Labrador').id,
    included_in_price: false,
    name: 'Harmonized Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.08,
    zone_id: Spree::Zone.find_by(name: 'Ontario').id,
    included_in_price: false,
    name: 'Harmonized Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.1,
    zone_id: Spree::Zone.find_by(name: 'Nova Scotia').id,
    included_in_price: false,
    name: 'Harmonized Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.1,
    zone_id: Spree::Zone.find_by(name: 'Prince Edward Island').id,
    included_in_price: false,
    name: 'Harmonized Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
  {
    amount: 0.06,
    zone_id: Spree::Zone.find_by(name: 'Saskatchewan').id,
    included_in_price: false,
    name: 'Provincial Sales Tax',
    show_rate_in_label: true,
    calculator: Spree::Calculator::DefaultTax.create,
    tax_categories: [Spree::TaxCategory.find_by(name: 'Canada')],
    starts_at: Date.parse('2019-01-01')
  },
])

# US Taxes
Spree::TaxCategory.create([
  {
    name: 'United States',
    description: 'United States',
    is_default: false
  }
])
