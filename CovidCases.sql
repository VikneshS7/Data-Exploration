Select *
From PortfolioProject..CovidCases


-- Records where the Country names end with letter 'a'

Select *
From PortfolioProject..CovidCases
Where country like '%A'

-- Records where the data is filtered after removing the null values from 'Variant' Column

Select *
From PortfolioProject..CovidCases
Where variant is not null

--Records with 'Number Sequenced Known Variant' Column arranged in Descending Order

Select *
From PortfolioProject..CovidCases
order by number_sequenced_known_variant desc

--Records with 'Number Sequenced Known Variant' Column arranged in Ascending Order

Select *
From PortfolioProject..CovidCases
order by number_sequenced_known_variant asc

--Records after filtering 'Number Sequenced Known Variant' Column for NULL Values

Select *
From PortfolioProject..CovidCases
Where number_sequenced_known_variant is not null

--Records after filtering 'Percent Cases Sequenced' Column for NULL Values

Select *
From PortfolioProject..CovidCases
Where percent_cases_sequenced is not null

-- Total Number of Records in the Database

Select count(*)
From PortfolioProject..CovidCases

--Count of the records where the value of variant is no null

Select count(percent_cases_sequenced)
From PortfolioProject..CovidCases
Where variant is not null

--Count of the records where the value of variant is null

Select count(percent_cases_sequenced)
From PortfolioProject..CovidCases
Where variant=null

-- Display the distinct names of the country

Select Distinct(country)
From PortfolioProject..CovidCases

-- To Display the sum of the new cases where the percent cases is not NULL

Select SUM(new_cases) 
From PortfolioProject..CovidCases 
Where percent_cases_sequenced is not null

-- To Display the Standard Deviation of the New Cases

Select STDEV(new_cases) as Standard_Deviation 
From PortfolioProject..CovidCases 

-- To Display the Coutry with Maximum percentage of Covid Cases

Select country,MAX(percent_cases_sequenced) as Maximum_Percentage 
From PortfolioProject..CovidCases 
group by country

-- To Display the Coutry with Minimum percentage of Covid Cases

Select country,Min(percent_cases_sequenced) as Minimum_Percentage 
From PortfolioProject..CovidCases 
group by country


Select * From PortfolioProject..CovidCases
