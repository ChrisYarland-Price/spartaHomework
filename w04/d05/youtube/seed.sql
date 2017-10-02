DROP TABLE IF EXISTS videos;

CREATE TABLE videos (

  id SERIAL NOT NULL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL, 
  url VARCHAR(255) NOT NULL

);

INSERT INTO videos (title , description, url) VALUES ('Casey Neistat Can''t Run Anymore' , 'Casey Neistat goes to a specialist to find out if he will ever be able to run like he wants too', 'https://www.youtube.com/embed/8-M7WA1qX1g');
INSERT INTO videos (title , description, url) VALUES ('The WAN Show' , 'The wan show is a weekly video podcast by the team at LinusTechTips', 'https://www.youtube.com/embed/XZP03YBhKzs');
INSERT INTO videos (title , description, url) VALUES ('Linux Terminal 201: Monitoring System Resources Pt 1 - HakTip 164' , 'Today we''re monitoring system resources with ps, aux, grep, kill, killall, and lsof.
Use coupon code haktip at https://www.eero.com for free overnight shipping on your order to the US or Canada!', 'https://www.youtube.com/embed/xcR_FjAy1HI');
INSERT INTO videos (title , description, url) VALUES ('Building a Solar Powered Workshop' , 'A full post with cost info and product specifications is coming soon to HomeMade-Modern.com
follow me on instagram for project updates: https://www.instagram.com/benjaminuye...
Thanks to Jason Andrade of West Coast Sustainables and to Mike Montgomery of Modern Builds', 'https://www.youtube.com/embed/xnSew-tCuPo');