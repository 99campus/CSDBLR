class Calculator < ActiveRecord::Base

  def calculate(data,deli)
    data = data.split(deli)
    arr = []
    bin_oper = ['+','-','*','/']
    uni_oper = ['%']
    exception_handling
    data.each_with_index do |data,index|
      if bin_oper.include?(data)
        binary_operation(arr,data)
      elsif uni_oper.include?(data)
        uranary_operation
      else
        arr.push(data)
      end
    end
    return eval(arr.join(",")).round(2)
  end

  def uranary_operation(arr,data)
    if data == "%"
      calc = arr[-1].to_i/100
      arr.pop(1)
      arr.push(calc.to_s)
    end
  end

  def binary_operation(arr,data)
    calc = eval("#{arr[-2]}#{data}#{arr[-1]}")
    arr.pop(2)
    arr.push(calc.to_s)
  end

  def exception_handling
  end


end
