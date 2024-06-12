# Class name was writen in lowercase
class Order < ApplicationModel
    belongs_to :customer
    enum status: { pending: 0, success: 1, failed: 2, rolled_back: 3 }
end
