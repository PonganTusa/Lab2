CREATE TABLE video(
idVideo int primary key,
titulo varchar(100),
repro int,
url varchar(100)
)


CREATE PROCEDURE spVideoInsertar
	@idVideo int,
	@titulo varchar(100),
	@repro int,
	@url varchar(100)
as
begin
	insert into video
	values (@idVideo,@titulo,@repro,@url)
end

exec spVideoInsertar 1,'tusa',1,'xxx'

select * from video