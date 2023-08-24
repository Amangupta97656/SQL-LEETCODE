# Write your MySQL query statement below
with x as (select machine_id, round(sum(timestamp), 3) as total_starttime, count(machine_id) as machine_count from activity
where activity_type = 'start'
group by machine_id),

y as (select machine_id, round(sum(timestamp), 3) as total_endtime, count(machine_id) as machine_count from activity
where activity_type = 'end'
group by machine_id)

select x.machine_id, round((y.total_endtime - x.total_starttime)/x.machine_count, 3) as processing_time from x
join y on x.machine_id = y.machine_id