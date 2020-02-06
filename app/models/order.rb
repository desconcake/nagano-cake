class Order < ApplicationRecord

	enum status: { waiting: 0, varification: 1, production: 3, Preparing: 4}
end
