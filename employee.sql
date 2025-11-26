CREATE table if not exists employee(
	employee_id SERIAL primary key,
	name VARCHAR(50) not null,
	departament VARCHAR(50) not null,
	chief_id INTEGER,
	FOREIGN key (chief_id) references employee(employee_id)
	);