SELECT aut.AUT_NAME
FROM  (SELECT AUTHOR_ID as auth ,count(PUBLICATION_ID)
      FROM PUBLICATION_AUTHORS
      GROUP BY AUTHOR_ID
      ORDER BY COUNT(PUBLICATION_ID) DESC) q1, AUTHOR aut
WHERE aut.AUT_ID = q1.auth and ROWNUM < 11