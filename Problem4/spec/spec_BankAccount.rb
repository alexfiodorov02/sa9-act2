require_relative '/Users/alex/workspace-3081/sa9-act2/Problem4/BankAccount'
RSpec.describe BankAccount do
  let(:account) { BankAccount.new }

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account.deposit(100)
      expect(account.balance).to eq(100)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account.deposit(100)
      account.withdraw(50)
      expect(account.balance).to eq(50)
    end

    it "does not change the balance if insufficient funds" do
      account.deposit(100)
      account.withdraw(200)
      expect(account.balance).to eq(100)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account.deposit(100)
      expect(account.balance).to eq(100)
    end
  end
end
