SELECT DISTINCT pa.AUTHOR_ID, pub.PUBLICATION_PAGES, TO_NUMBER(SUBSTR(pub.PRICE,2,6))
FROM PUBLICATIONS pub, PUBLICATION_AUTHORS pa
WHERE pub.P_ID = pa.PUBLICATION_ID and SUBSTR(pub.PRICE,1,1) = '$' -- gives distinct id number of pages and price ($)