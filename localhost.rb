partition 'localhost' do
  label 'localhost', :address => '10.0.2.15'

  accept 'temporary accept localhost' do 
    ports 80
    to    'localhost'
  end

   rewrite 'temporarily rewrite 80 to 8080' do
    ports 80 => 8080
    dnat 'localhost' => 'localhost'
  end

  accept 'ssh' do 
    ports 22
    to 'localhost'
  end
end
