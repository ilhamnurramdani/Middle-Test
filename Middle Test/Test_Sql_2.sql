SELECT item from (
		SELECT item, COUNT(*) as cnt
  	from item_bought 
  	GROUP by item
) 
WHERE cnt != (SELECT max(cnt) FROM (SELECT item, COUNT(*) as cnt from item_bought GROUP by item))
and cnt != (SELECT min(cnt) from (SELECT item, COUNT(*)as cnt FROM item_bought GROUP BY item))