require 'rails_helper'

RSpec.describe Calculator, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'calculate' do
  	cal = Calculator.new
  	val = cal.calculate('1,2,+',',')
  	expect(val).to be 3.00
  end

  it 'calculate1' do
  	cal = Calculator.new
  	val = cal.calculate('1,2,3,+,-',',')
  	expect(val).to be -4.00
  end

  it 'calculate2' do
  	cal = Calculator.new
  	val = cal.calculate('1,2,3,4,+,-,*',',')
  	expect(val).to be -5.00
  end

  it 'calculate3' do
  	cal = Calculator.new
  	val = cal.calculate('1,2,3,4,5,+,-,*,/',',')
  	expect(val).to be -1.0
  end

  # it 'calculate2' do
  # 	cal = Calculator.new
  # 	val = cal.calculate('10,%',',')
  # 	expect(val).to be 0.1
  # end


end
