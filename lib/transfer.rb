class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
   end

   def valid?
     sender.valid? && receiver.valid?
   end

   def execute_transaction
     binding.pry
     sender.balance -= amount
     receiver.balance += amount
   end




end
