select 
    customer_id,
    customer_first_name,
    customer_last_name,
    customer_work_company,
    customer_mailing_address,
    customer_mailing_city,
    customer_mailing_state,
    customer_mailing_country,
    customer_phone_number,
    customer_fax_number,
    customer_email_address,
    employee_id,
    employee_first_name,
    employee_last_name,
    concat(employee_first_name, ' ', employee_last_name) as employee_name,
    employee_title,
    employee_birth_date,
    employee_hired_date,
    employee_address,
    employee_city,
    employee_state,
    employee_country,
    employee_zipcode,
    employee_phone_number,
    employee_fax_number,
    employee_email_address,
    supervisor_employee_id
from {{ ref("stg_music__customers") }} as customer
left join {{ ref('stg_music__employees') }} as employee
    on customer.representative_employee_id = employee.employee_id