require 'album_repository'

RSpec.describe AlbumRepository do 

  def reset_albums_table
    seed_sql = File.read('spec/seeds_albums.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_albums_table
  end
  
  it 'returns the list of albums' do 
    repo = AlbumRepository.new

    albums = repo.all

    expect(albums.length).to eq 7 # => 7 
    expect(albums[0].id).to eq '1'# =>  1
    expect(albums.first.title).to eq 'Doobig' # =>  'Doobig'
  end 

end 