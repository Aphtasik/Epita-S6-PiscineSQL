SELECT surname, employee.name, email FROM agency, employee
WHERE agency.ratings > 6 AND agency.code = employee.agency_code
ORDER BY surname, employee.name, email;
