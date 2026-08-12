USE sentiment_db;

-- 1. Verify total rows uploaded
SELECT COUNT(*) AS Total_Reviews FROM amazon_reviews;

-- 2. Sentiment breakdown by complaint category
SELECT 
    Complaint_Category,
    COUNT(*) AS Total_Count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM amazon_reviews), 2) AS Percentage,
    ROUND(AVG(Sentiment_Score), 4) AS Avg_Sentiment
FROM amazon_reviews
GROUP BY Complaint_Category
ORDER BY Total_Count DESC;

-- 3. Identify "Silent Churn" (High rating, negative sentiment)
SELECT 
    Id,
    ProductId,
    Score AS Star_Rating,
    Sentiment_Score,
    Complaint_Category,
    Summary
FROM amazon_reviews
WHERE Score >= 4 AND Sentiment_Label = 'Negative'
ORDER BY Sentiment_Score ASC
LIMIT 10;





 














