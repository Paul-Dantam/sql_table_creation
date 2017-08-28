

-- Write INSERT statements to insert five todos into this table, with one of them completed.
-- Write a SELECT statement to find all incomplete todos.
-- Write a SELECT statement to find all todos with a priority above 1.
-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
-- Write a DELETE statement to delete all completed todos.



create table todos (
    id serial primary key,
    title varchar(255) not null,
    details varchar null,
    priority integer not null default 1,
    created_at varchar not null,
    completed_at varchar null
)


insert into todos (title, details, priority, created_at, completed_at)
    values
            ('walk dog', '10 minute walk', '2017-7-21 12:30:30', '2017-7-21 1:15:15');

insert into todos (title, priority, created_at)
    values
        ('change oil', 3, '2017-7-30 2:20:10'),
        ('clean chicken coop', 2, '2017-8-3 16:30:30')
        ('prep stock', 4, '2017-8-15 12:10:15')
        ('build garden beds', 2, '2017-6-10 12:15:10');

select * from todos where completed_at = null;
select * from todos where priority >1;

update todos set completed_at = '2017-8-28 15:12:10' where id = 3;

delete from todos where completed_at !null;




