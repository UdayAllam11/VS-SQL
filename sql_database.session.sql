

    Select job_title, Job_location, EXTRACT(Month from job_posted_date) as Month_Num, job_posted_date
    from job_postings_fact
    WHERE EXTRACT(Month from job_posted_date) = 1
    Limit 50



select name as CompanyName,
Company_id
from company_dim
where Company_id IN(

    select Company_id
    from 
    job_postings_fact
    where
    job_no_degree_mention = true
)



select job_title, job_postings_fact, salary_year_avg from job_postings_fact
order by salary_year_avg
limit 10