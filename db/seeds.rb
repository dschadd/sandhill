User.create(first_name: "Daniel", last_name: "Schadd", email: "daniel@email.com")

User.create(first_name: "Alvin", last_name: "Kamara", email: "alvin@email.com")

User.create(first_name: "Khalil", last_name: "Mack", email: "khalil@email.com")

Company.create(name: "Tesla", ticker: "tsla")

Company.create(name: "Apple", ticker: "aapl")

Company.create(name: "Netflix", ticker: "n")

Crypto.create(name: "Bitcoin", ticker: "btc")

Crypto.create(name: "Ethereum", ticker: "eth")

Crypto.create(name: "Ripple", ticker: "xrp")

Portfolio.create(user_id: 1, name: "Retirement", private: false)

Portfolio.create(user_id: 2, name: "Spending Money", private: false)

Portfolio.create(user_id: 3, name: "Retirement", private: false)

Portfolio.create(user_id: 2, name: "Kid's College", private: false)

CompanyPortfolio.create(portfolio_id: 1, user_id: 3, company_id: 1, shares: 5)

CompanyPortfolio.create(portfolio_id: 2, user_id: 2, company_id: 2, shares: 4)

CompanyPortfolio.create(portfolio_id: 3, user_id: 1, company_id: 3, shares: 3)

CompanyPortfolio.create(portfolio_id: 4, user_id: 3, company_id: 2, shares: 7)

CryptoPortfolio.create(portfolio_id: 2, user_id: 1, crypto_id: 2, count: 2.3)

CryptoPortfolio.create(portfolio_id: 3, user_id: 1, crypto_id: 1, count: 0.8)

CryptoPortfolio.create(portfolio_id: 4, user_id: 2, crypto_id: 3, count: 29.1)

CryptoPortfolio.create(portfolio_id: 1, user_id: 3, crypto_id: 2, count: 8.1)

CompanyFollow.create(company_id: 1, user_id: 1, follow: true)

CompanyFollow.create(company_id: 2, user_id: 2, follow: true)

CompanyFollow.create(company_id: 1, user_id: 3, follow: true)

CompanyFollow.create(company_id: 3, user_id: 2, follow: true)

CompanyFollow.create(company_id: 2, user_id: 1, follow: true)

CompanyFollow.create(company_id: 3, user_id: 1, follow: true)

CompanyFollow.create(company_id: 2, user_id: 3, follow: true)

CryptoFollow.create(crypto_id: 1, user_id: 1, follow: true)

CryptoFollow.create(crypto_id: 3, user_id: 2, follow: true)

CryptoFollow.create(crypto_id: 2, user_id: 3, follow: true)

CryptoFollow.create(crypto_id: 2, user_id: 2, follow: true)

CryptoFollow.create(crypto_id: 3, user_id: 1, follow: true)

CryptoFollow.create(crypto_id: 2, user_id: 1, follow: true)

CryptoFollow.create(crypto_id: 1, user_id: 3, follow: true)
