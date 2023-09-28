--use project
--SELECT DISTINCT [Post ID] FROM ['Post Performance (Stanbic IBTC)$']


--use project

select * from ['Post Performance (Stanbic IBTC)$']
where [Content Type] in  ('video' , 'text', 'Photo','link')
and Date is not null
and Date like '2013%'
order by Date 



use project;
select distinct [Sent by],[Content Type],sum(Impressions) from ['Post Performance (Stanbic IBTC)$']
group by [Content Type],[Sent by]
order by [Sent by]



select Date, [Content Type], [sent by], sum(Impressions) total_impression, 
sum([Viral Impressions]) viral, sum([Non-viral Impressions]) non_viral, 
sum([Fan Impressions]) Fan,sum ([Non-fan Impressions]) non_fan, sum(Reach) reach
from ['Post Performance (Stanbic IBTC)$']
where Date is not null
group by [Sent by],	[Content Type], Date
order by [Sent by], Date
*/

SELECT Date, [Content Type], [sent by], 
    CASE WHEN SUM(Impressions) = 0 THEN NULL ELSE SUM(Impressions) END AS total_impression,
    CASE WHEN SUM([Viral Impressions]) = 0 THEN NULL ELSE SUM([Viral Impressions]) END AS viral,
    CASE WHEN SUM([Non-viral Impressions]) = 0 THEN NULL ELSE SUM([Non-viral Impressions]) END AS non_viral,
    CASE WHEN SUM([Fan Impressions]) = 0 THEN NULL ELSE SUM([Fan Impressions]) END AS Fan,
    CASE WHEN SUM([Non-fan Impressions]) = 0 THEN NULL ELSE SUM([Non-fan Impressions]) END AS non_fan,
    CASE WHEN SUM(Reach) = 0 THEN NULL ELSE SUM(Reach) END AS reach
FROM ['Post Performance (Stanbic IBTC)$']
WHERE Date IS NOT NULL
GROUP BY [Sent by], [Content Type], Date
ORDER BY [Sent by], Date


select Date,[Post ID],Engagements,Reactions,Likes,[Love Reactions],[Haha Reactions],
[Sad Reactions],[Wow Reactions],[Angry Reactions],Comments,Shares,
[Unique Comments],[Unique Negative Feedback],[Post Clicks (All)],[Post Photo View Clicks],
[Post Video Play Clicks],[Negative Feedback],[Engaged Users],[Engaged Fans],[Engagement Rate (per Impression)],
[Engagement Rate (per Reach)],[Users Talking About This],[Unique Reactions],[Unique Comments],[Unique Post Clicks],
[Unique Post Photo View Clicks],[Unique Paid Video Views]
from ['Post Performance (Stanbic IBTC)$']
where date is not null
--and Engagements is not null
order by Date 



SELECT Date, [Post ID],[Content Type],[sent by], 
    CASE WHEN (Engagements) = 0 THEN NULL ELSE Engagements END AS Engagements,
    CASE WHEN (Reactions) = 0 THEN NULL ELSE Reactions END AS Reactions,
    CASE WHEN (Likes) = 0 THEN NULL ELSE Likes END AS Likes,
    CASE WHEN ([Love Reactions]) = 0 THEN NULL ELSE [Love Reactions] END AS [Love Reactions],
    CASE WHEN ([Haha Reactions]) = 0 THEN NULL ELSE [Haha Reactions] END AS [Haha Reactions],
    CASE WHEN ([Sad Reactions]) = 0 THEN NULL ELSE [Sad Reactions] END AS [Sad Reactions],
    CASE WHEN ([Wow Reactions]) = 0 THEN NULL ELSE [Wow Reactions] END AS [Wow Reactions],
    CASE WHEN ([Angry Reactions]) = 0 THEN NULL ELSE [Angry Reactions] END AS [Angry Reactions],
    CASE WHEN (Comments) = 0 THEN NULL ELSE Comments END AS Comments,
    CASE WHEN (Shares) = 0 THEN NULL ELSE Shares END AS Shares,
    CASE WHEN ([Unique Comments]) = 0 THEN NULL ELSE [Unique Comments] END AS [Unique Comments],
    CASE WHEN ([Unique Negative Feedback]) = 0 THEN NULL ELSE [Unique Negative Feedback] END AS [Unique Negative Feedback],
    CASE WHEN ([Post Clicks (All)]) = 0 THEN NULL ELSE [Post Clicks (All)] END AS [Post Clicks (All)],
    CASE WHEN ([Post Photo View Clicks]) = 0 THEN NULL ELSE [Post Photo View Clicks] END AS [Post Photo View Clicks],
    CASE WHEN ([Post Video Play Clicks]) = 0 THEN NULL ELSE [Post Video Play Clicks] END AS [Post Video Play Clicks],
    CASE WHEN ([Negative Feedback]) = 0 THEN NULL ELSE [Negative Feedback] END AS [Negative Feedback],
    CASE WHEN ([Engaged Users]) = 0 THEN NULL ELSE [Engaged Users] END AS [Engaged Users],
    CASE WHEN ([Engaged Fans]) = 0 THEN NULL ELSE [Engaged Users] END AS [Engaged Fans],
    CASE WHEN ([Engagement Rate (per Impression)]) = 0 THEN NULL ELSE [Engagement Rate (per Impression)] END AS [Engagement Rate (per Impression)],
    CASE WHEN ([Engagement Rate (per Reach)]) = 0 THEN NULL ELSE [Engagement Rate (per Reach)] END AS [Engagement Rate (per Reach)],
    CASE WHEN ([Users Talking About This]) = 0 THEN NULL ELSE [Users Talking About This] END AS [Users Talking About This],
    CASE WHEN ([Unique Reactions]) = 0 THEN NULL ELSE [Unique Reactions] END AS [Unique Reactions],
    CASE WHEN ([Unique Comments]) = 0 THEN NULL ELSE [Unique Reactions] END AS [Unique Comments],
    CASE WHEN ([Unique Post Clicks]) = 0 THEN NULL ELSE [Unique Post Clicks] END AS [Unique Post Clicks],
    CASE WHEN ([Unique Post Photo View Clicks]) = 0 THEN NULL ELSE [Unique Post Photo View Clicks] END AS [Unique Post Photo View Clicks],
    CASE WHEN ([Unique Paid Video Views]) = 0 THEN NULL ELSE [Unique Paid Video Views] END AS [Unique Paid Video Views]
FROM ['Post Performance (Stanbic IBTC)$']
WHERE Date IS NOT NULL
ORDER BY Date



SELECT Date,[Post ID],[Content Type],[sent by],  
    CASE WHEN SUM(Impressions) = 0 THEN NULL ELSE SUM(Impressions) END AS total_impression,
    CASE WHEN SUM([Viral Impressions]) = 0 THEN NULL ELSE SUM([Viral Impressions]) END AS viral,
    CASE WHEN SUM([Non-viral Impressions]) = 0 THEN NULL ELSE SUM([Non-viral Impressions]) END AS non_viral,
    CASE WHEN SUM([Fan Impressions]) = 0 THEN NULL ELSE SUM([Fan Impressions]) END AS Fan,
    CASE WHEN SUM([Non-fan Impressions]) = 0 THEN NULL ELSE SUM([Non-fan Impressions]) END AS non_fan,
    CASE WHEN SUM(Reach) = 0 THEN NULL ELSE SUM(Reach) END AS reach,
    case when SUM(Engagements) = 0 THEN NULL ELSE SUM(Engagements) END AS Engagements,
    case when SUM(Reactions) = 0 THEN NULL ELSE SUM(Reactions) END AS Reactions,
    case when SUM(Likes) = 0 THEN NULL ELSE SUM(Likes) END AS Likes,
    case when SUM([Love Reactions]) = 0 THEN NULL ELSE SUM([Love Reactions]) END AS [Love Reactions],
    case when SUM([Haha Reactions]) = 0 THEN NULL ELSE SUM([Haha Reactions]) END AS [Haha Reactions],
    case when SUM([Sad Reactions]) = 0 THEN NULL ELSE SUM([Sad Reactions]) END AS [Sad Reactions],
    case when SUM([Wow Reactions]) = 0 THEN NULL ELSE SUM([Wow Reactions]) END AS [Wow Reactions],
    case when SUM([Angry Reactions]) = 0 THEN NULL ELSE SUM ([Angry Reactions]) END AS [Angry Reactions],
    case when SUM(Comments) = 0 THEN NULL ELSE SUM(Comments) END AS Comments,
    case when SUM(Shares) = 0 THEN NULL ELSE SUM(Shares) END AS Shares,
    case when SUM([Unique Comments]) = 0 THEN NULL ELSE SUM([Unique Comments]) END AS [Unique Comments],
    case when SUM([Unique Negative Feedback]) = 0 THEN NULL ELSE SUM([Unique Negative Feedback]) END AS [Unique Negative Feedback],
    case when SUM([Post Clicks (All)]) = 0 THEN NULL ELSE SUM([Post Clicks (All)]) END AS [Post Clicks (All)],
    case when SUM([Post Photo View Clicks]) = 0 THEN NULL ELSE SUM([Post Photo View Clicks]) END AS [Post Photo View Clicks],
    case when SUM([Post Video Play Clicks]) = 0 THEN NULL ELSE SUM([Post Video Play Clicks]) END AS [Post Video Play Clicks],
    case when SUM([Negative Feedback]) = 0 THEN NULL ELSE SUM([Negative Feedback]) END AS [Negative Feedback],
    case when SUM([Engaged Users]) = 0 THEN NULL ELSE SUM([Engaged Users]) END AS [Engaged Users],
    case when SUM([Engaged Fans]) = 0 THEN NULL ELSE SUM([Engaged Users]) END AS [Engaged Fans],
    case when SUM([Engagement Rate (per Impression)]) = 0 THEN NULL ELSE SUM([Engagement Rate (per Impression)]) END AS [Engagement Rate (per Impression)],
    case when SUM([Engagement Rate (per Reach)]) = 0 THEN NULL ELSE SUM([Engagement Rate (per Reach)]) END AS [Engagement Rate (per Reach)],
    case when SUM([Users Talking About This]) = 0 THEN NULL ELSE SUM([Users Talking About This]) END AS [Users Talking About This],
    case when SUM([Unique Reactions]) = 0 THEN NULL ELSE SUM([Unique Reactions]) END AS [Unique Reactions],
    case when SUM([Unique Comments]) = 0 THEN NULL ELSE SUM([Unique Reactions]) END AS [Unique Comments],
    case when SUM([Unique Post Clicks]) = 0 THEN NULL ELSE SUM([Unique Post Clicks]) END AS [Unique Post Clicks],
    case when SUM([Unique Post Photo View Clicks]) = 0 THEN NULL ELSE SUM([Unique Post Photo View Clicks]) END AS [Unique Post Photo View Clicks],
    case when SUM([Unique Paid Video Views]) = 0 THEN NULL ELSE SUM([Unique Paid Video Views]) END AS [Unique Paid Video Views]
FROM ['Post Performance (Stanbic IBTC)$']
GROUP BY Date,[Post ID],[Content Type],[sent by]
ORDER BY Date desc



---instagram 

use project
select Date,[Post ID],[Content Type],[sent by],
	CASE WHEN SUM(Impressions) = 0 THEN NULL ELSE SUM(Impressions) END AS total_impression,
	CASE WHEN SUM(Reach) = 0 THEN NULL ELSE SUM(Reach) END AS reach,
	case when SUM([Engagement Rate (per Impression)]) = 0 THEN NULL ELSE SUM([Engagement Rate (per Impression)]) END AS [Engagement Rate (per Impression)],
    case when SUM([Engagement Rate (per Reach)]) = 0 THEN NULL ELSE SUM([Engagement Rate (per Reach)]) END AS [Engagement Rate (per Reach)],
	case when SUM(Engagements) = 0 THEN NULL ELSE SUM(Engagements) END AS Engagements,
	case when SUM(Reactions) = 0 THEN NULL ELSE SUM(Reactions) END AS Reactions,
    case when SUM(Likes) = 0 THEN NULL ELSE SUM(Likes) END AS Likes,
	case when SUM(Comments) = 0 THEN NULL ELSE SUM(Comments) END AS Comments,
	case when SUM(Saves) = 0 THEN NULL ELSE SUM(Saves) END AS Saves,
    case when SUM([Video Views]) = 0 THEN NULL ELSE SUM([Video Views]) END AS [Video Views]
from ['Post performance instagram']
GROUP BY Date,[Post ID],[Content Type],[sent by]
ORDER BY Date desc;


----Twitter
use project;
select Date, [Post ID], [Content Type], [Sent by],
    CASE WHEN SUM(cast(Impressions as float)) = 0 THEN NULL ELSE SUM(Impressions) END AS total_impression,
    CASE WHEN SUM(cast([Potential Reach] as float)) = 0 THEN NULL ELSE SUM([Potential Reach]) END AS [Potential Reach],
    case when SUM(cast([Engagement Rate (per Impression)] as float)) = 0 THEN NULL ELSE SUM([Engagement Rate (per Impression)]) END AS [Engagement Rate (per Impression)],
    ----case when SUM(cast([Engagement Rate (per Reach)] as float)) = 0 THEN NULL ELSE SUM([Engagement Rate (per Reach)]) END AS [Engagement Rate (per Reach)]
    case when SUM(cast(Engagements as float)) = 0 THEN NULL ELSE SUM(Engagements) END AS Engagements,
    case when SUM(cast(Reactions as float)) = 0 THEN NULL ELSE SUM(Reactions) END AS Reactions,
    case when SUM(cast(Likes as float)) = 0 THEN NULL ELSE SUM(Likes) END AS Likes,
    case when SUM(cast(Comments as float)) = 0 THEN NULL ELSE SUM(Comments) END AS Comments,
    case when SUM(cast(Shares as float)) = 0 THEN NULL ELSE SUM(Shares) END AS Shares,
    case when SUM(cast([Post Clicks (All)] as float)) = 0 THEN NULL ELSE SUM([Post Clicks (All)]) END AS [Post Clicks (All)]
    --case when SUM(cast([Video Views] as float)) = 0 THEN NULL ELSE SUM([Video Views]) END AS [Video Views]
from ['Post Performance (Twitter)$']
GROUP BY Date, [Post ID], [Content Type], [Sent by]
ORDER BY Date desc;


use project
select Date, [Post ID], [Content Type], [Sent by],
    CASE WHEN SUM(Impressions) = 0 THEN NULL ELSE SUM(Impressions) END AS total_impression,
	CASE WHEN SUM([Engagement Rate (per Impression)]) = 0 THEN NULL ELSE SUM([Engagement Rate (per Impression)]) END AS [Engagement Rate (per Impression)],
	CASE WHEN SUM(Engagements) = 0 THEN NULL ELSE SUM(Engagements) END AS Engagements,
	CASE WHEN SUM(Reactions) = 0 THEN NULL ELSE SUM(Reactions) END AS Reactions,
	CASE WHEN SUM(Likes) = 0 THEN NULL ELSE SUM(Likes) END AS Likes,
	CASE WHEN SUM(Comments) = 0 THEN NULL ELSE SUM(Comments) END AS Comments,
	CASE WHEN SUM(Shares) = 0 THEN NULL ELSE SUM(Shares) END AS Shares,
	CASE WHEN SUM([Post Clicks (ALL)]) = 0 THEN NULL ELSE SUM([Post Clicks (ALL)]) END AS [Post Clicks (ALL)]
from ['Post Performance (linkedin)$']
GROUP BY Date, [Post ID], [Content Type], [Sent by]
ORDER BY Date desc;