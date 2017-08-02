class Changeamountinorder < ActiveRecord::Migration[5.0]
  def change
     change_column(:orders, :amount_cents, :float)
  end
end
