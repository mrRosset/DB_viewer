SELECT DISTINCT count(pub.P_ID)--, pub.PUBLICATION_PAGES
FROM TITLE tit, PUBLICATION_CONTENT pc, PUBLICATIONS pub
WHERE tit.T_GRAPHICS = 'Yes' and pc.TITLE_ID = tit.T_ID and pub.P_ID = pc.PUBLICATION_ID and pub.PUBLICATION_PAGES >= 100