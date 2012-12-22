require 'roman'

describe Roman::Izer, '.convert' do
  it 'does not convert numbers too small' do
    Roman::Izer.convert(0).should == ''
    Roman::Izer.convert(-1).should == ''
  end

  {
    1 => 'I',
    2 => 'II',
    3 => 'III',
    10 => 'X',
    20 => 'XX',
    30 => 'XXX',
    5 => 'V',
    27 => 'XXVII',
    4 => 'IV',
    9 => 'IX',
    50 => 'L',
    40 => 'XL',
    100 => 'C',
    90 => 'XC',
    500 => 'D',
    400 => 'CD',
    1000 => 'M',
    900 => 'CM',
    2012 => 'MMXII',
    3888 => 'MMMDCCCLXXXVIII',
  }.each do |arabic, roman|
    it "converts #{sprintf('%4d', arabic)} : #{roman}" do
      Roman::Izer.convert(arabic).should == roman
    end
  end
end
