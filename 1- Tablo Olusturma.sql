CREATE TABLE cities(

	city_id INT IDENTITY(1,1) PRIMARY KEY,
	country_id INT  NOT NULL,
	names VARCHAR(50) NOT NULL,
	population INT NOT NULL,
	common_energy_id INT NOT NULL

)

CREATE TABLE countries (
	
	country_id INT IDENTITY(1,1) PRIMARY KEY,
	names VARCHAR(50) NOT NULL,
	population INT NOT NULL
)
CREATE TABLE big_companies(

	company_id INT IDENTITY(1,1) PRIMARY KEY,
	names VARCHAR(50) NOT NULL,
	city_id INT  NOT NULL,
	country_id INT  NOT NULL,
	emission_percent FLOAT NOT NULL
)

CREATE TABLE energy_source (

	energy_id INT IDENTITY(1,1) PRIMARY KEY,
	energy_type VARCHAR(50) NOT NULL
)

CREATE TABLE air_quality(
	
	air_id INT IDENTITY(1,1) PRIMARY KEY,
	air_quality_index FLOAT NOT NULL,
	city_id INT UNIQUE NOT NULL
)

CREATE TABLE carbon_emission(

	carbon_id INT IDENTITY(1,1) PRIMARY KEY,
	city_id INT UNIQUE NOT NULL,
	total_emission FLOAT NOT NULL,
	residental_emission FLOAT NOT NULL,
	agricultural_emission FLOAT NOT NULL,
	tranportation_emission FLOAT NOT NULL,
	industriel_emission FLOAT NOT NULL
)