ALTER Table netflix_titles 
drop column Column19

select * 
FROM netflix_titles nt 

SELECT type,
COUNT(*) as No_of_types_in_world
FROM netflix_titles nt 
GROUP BY "type" 

SELECT type,country , date_added_month ,date_added_Year ,release_year,
Count(*) as no_of_data
FROM netflix_titles nt
WHERE country = 'India'
GROUP BY date_added_month  
ORDER BY date_added_Year  ASC 

SELECT show_id , type, country, date_added_Year,release_year , date_added_month ,
COUNT(*) as No_of_data
FROM netflix_titles nt
WHERE country != ""
GROUP BY country, "type" 
ORDER BY No_of_data DESC  

SELECT show_id ,type, country, 
COUNT(*) as Count
FROM netflix_titles nt
WHERE country != "" and "type" = 'TV Show'  
GROUP BY country
ORDER BY show_id  ASC 

SELECT rating,-- country, 
COUNT(*) as Count
FROM netflix_titles nt
WHERE country != ""-- and rating = "PG-13"-- "type" = 'TV Show'  
GROUP BY rating  
ORDER BY Count DESC

SELECT genre, country,-- country, 
COUNT(*) as Count
FROM netflix_titles nt
WHERE genre  != ""and country !="" 
GROUP BY genre  
ORDER BY Count,country  ASC  

SELECT duration,"type" 
FROM netflix_titles nt 
where "type"  = 'Movie' AND duration !=''
order by duration DESC  

SELECT show_id, "type" ,CAST(duration AS int) Duration_min,title,CASE
	WHEN duration >= 180 THEN "Long Movie"
	--WHEN duration >= 90 THEN "Regular length movie"
	ELSE "Short Film"
	END as MOVIE_INFO
FROM netflix_titles nt
WHERE "type" = 'Movie'-- and Duration_min >160
ORDER BY Duration_min  ASC
	
