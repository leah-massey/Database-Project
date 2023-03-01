require_relative 'lib/database_connection'

DatabaseConnection.connect('music_library')

# sql = 'SELECT id, title, release_year FROM albums;'
# result = DatabaseConnection.exec_params(sql, [])

# result.each do |record|
#   p record

album_repository = AlbumRepository.new
album_repository.all.each do |record|
  p record

end