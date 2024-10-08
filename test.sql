WITH q1_jobs as (
SELECT 
    *
FROM
    january_jobs
UNION all
select 
    *
FROM
    february_jobs
UNION all
select
    *
FROM
    march_jobs
)
select 
    *
from q1_jobs
where
    q1_jobs.salary_year_avg > 70000
    and job_title_short = 'Data Analyst'
order BY
    salary_year_avg desc