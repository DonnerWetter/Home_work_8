require 'rspec'

require_relative '../hw_8'

describe DataTest do
  let(:data_test) do
    DataTest.new
  end
    
  it 'Начинается с буквы, может содержать цифры и знак подчеркивания, все буквы в нижнем регистре' do
    expect(data_test.test_id('bla_bla1')).to eq("Идентификатор корректный: переменная или функция")
  end

  it 'Начинается с большой буквы, может содержать цифры, буквы и знак подчеркивания' do
    expect(data_test.test_id('Bla_bla2')).to eq("Идентификатор корректный: класс")
  end

  it 'Начинается со знака @, следующим символом должна быть буква, может содержать цифры, буквы и  знак подчеркивания, буквы в нижнем регистре' do
    expect(data_test.test_id('@bla_bla3')).to eq("Идентификатор корректный: свойство объекта")
  end

  it 'Начинается со знаков @@, следующим символом после @@ должна быть буква, может содержать цифры, буквы и  знак подчеркивания, буквы в нижнем регистре' do
    expect(data_test.test_id('@@bla_bla4')).to eq("Идентификатор корректный: свойство класса")
  end

  it 'Начинается с буквы, может содержать цифры, буквы и знак подчеркивания, все буквы в верхнем регистре' do
    expect(data_test.test_id('BLA_BLA5')).to eq("Идентификатор корректный: константа")
  end

  it 'Не относится к идентификаторам и начинается с цифры' do
    expect(data_test.test_id('6Bla_Bla')).to eq("Идентификатор не корректный")
  end
end