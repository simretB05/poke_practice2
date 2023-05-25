insert into team (name,city,conference)
values

('team1','city1','Eastern'),
('team2','city2','Western'),
('team3','city3','Eastern');

insert into player (first_name,last_name,`position`,`number`, team_id)
values
('P1','P1_ln','Point Guard',1,1),
('P2','P2_ln','Center',2,1),
('P3','P3_ln','Forward',3,1),
('P4','P4_ln','Center',4,1),
('P5','P5_ln','Post',5,1),
('P6','P6_ln','Point Guard',6,2),
('P7','P7_ln','Post',7,2),
('P8','P8_ln','Forward',8,2),
('P9','P9_ln','Center',9,2),
('P10','P10_ln','Post',10,2),
('P11','P11_ln','Point Guard',11,3),
('P12','P12_ln','Point Guard',12,3),
('P13','P13_ln','Forward',13,3),
('P14','P14_ln','Center',14,3),
('P15','P15_ln','Post',15,3);
insert into game (`date`,home_team_id,away_team_id)
values
('2023-05-20',1,3),
('2023-05-21',2,1),
('2023-05-22',3,2);

insert into `point`(game_id,player_id,total)
values
    (1, 1, 10),
    (1, 2, 5),
    (1, 3, 8),
    (1, 4, 3),
    (1, 5, 6),
    (1, 6, 7),
    (1, 7, 3),
    (1, 8, 6),
    (1, 9, 2),
    (1, 10, 9),
    (1, 11, 12),
    (1, 12, 9),
    (1, 13, 6),
    (1, 14, 4),
    (1, 15, 7),
    (2, 1, 7),
    (2, 2, 3),
    (2, 3, 6),
    (2, 4, 2),
    (2, 5, 9),
    (2, 6, 5),
    (2, 7, 8),
    (2, 8, 4),
    (2, 9, 3),
    (2, 10, 7),
    (2, 11, 9),
    (2, 12, 6),
    (2, 13, 2),
    (2, 14, 5),
    (2, 15, 4),
    (3, 1, 12),
    (3, 2, 8),
    (3, 3, 5),
    (3, 4, 4),
    (3, 5, 7),
    (3, 6, 6),
    (3, 7, 3),
    (3, 8, 9),
    (3, 9, 2),
    (3, 10, 5),
    (3, 11, 11),
    (3, 12, 7),
    (3, 13, 4),
    (3, 14, 6),
    (3, 15, 3);
   
 select t.id ,t.name,t.city ,t.conference 
 from team t ;
   
  select p.id,p.first_name ,p.last_name ,p.`position` ,p.`number` ,p.team_id 
 from player p ;

 select t.name,t.city
 from team t ;

select p.first_name  ,t.name 
from player p inner join team t on t.id =p.team_id ;

select p.first_name
from player p 
where p.`position` ='Center';

select p.first_name ,p.last_name 
from player p inner join team t on p.team_id =t.id 
where  t.conference ='Western' and  p.`position` ='Point Guard'; 

select t.name ,p.first_name ,p.last_name ,po.total
from player p inner join team t 
inner join game g inner join `point` po 
where p.id='5';


select sum(p.total) ,t.name
from game g  inner join `point` p on g.id=p.game_id
inner join team t 
group by p.game_id; 

select count(g.id), t.name 
from  team t inner join game g  on t.id =g.id
inner join `point` p on g.id= p.game_id
group by t.id ;


























 
   










