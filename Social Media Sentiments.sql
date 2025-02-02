create database SocialMediaSentimentsAnalysis;

select * from socialmediasentiment;

-- What is the distribution of sentiments across all platforms?

SELECT 
    Sentiment, COUNT(*) AS sentimentcount
FROM
    socialmediasentiment
GROUP BY sentiment;

-- Which platform has the highest average likes and retweets?

SELECT 
    platform, AVG(likes) Avg_Likes, AVG(retweets) Avg_Retweets
FROM
    socialmediasentiment
GROUP BY Platform
ORDER BY Avg_Likes DESC;

-- What are the most popular hashtags for each sentiment?	

SELECT 
    sentiment, hashtags, COUNT(*) AS Frequency
FROM
    socialmediasentiment
GROUP BY Sentiment , Hashtags
ORDER BY Sentiment , Frequency DESC;

-- How does activity vary across hours of the day?

SELECT 
    hour, COUNT(*) AS postcount
FROM
    socialmediasentiment
GROUP BY hour
ORDER BY hour;

-- Which country has the highest positive sentiment posts?

SELECT Country, Sentiment, COUNT(*) AS PositivePosts
FROM socialmediasentiment
GROUP BY country, Sentiment
order by country, Sentiment desc;



select * from socialmediasentiment;

