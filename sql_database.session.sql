

    Select job_title, Job_location, EXTRACT(Month from job_posted_date) as Month_Num, job_posted_date
    from job_postings_fact
    WHERE EXTRACT(Month from job_posted_date) = 1
    Limit 50




