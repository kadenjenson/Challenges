  arr_1 = ['1', '5', '9']
  arr_2 = ['10', '2', '7', '10']
  arr_3 = ['3', '4', '0']

def array_converter *arrays
   arrays.flatten.map(&:to_i)
end


describe 'Combine arrays and convert strings to integers' do
  it 'can take in a variable number of arrays and return a single array' do

    expect(array_converter(arr_1, arr_2, arr_3).count).to eq(10)
    expect(array_converter(arr_1).first).to eq(1)
  end
end

p array_converter arr_1, arr_2, arr_3