require_relative './album_class'

class AlbumRepository

  #selecting all records
  #no aguments
  def all 

    

    sql = 'SELECT id, title, release_year FROM albums;'
    result = DatabaseConnection.exec_params(sql, [])

    albums = []

    result.each do |record|
      album = Album.new
      album.id = record['id']
      album.title = record['title']
      album.release_year = record['release_year']

      albums << album
    end

    return albums



    #executes the SQL query: 
    #SELECT id, title, release_date, artist_id FROM albums;

    #Returns an array of Album objects
  end 

end 