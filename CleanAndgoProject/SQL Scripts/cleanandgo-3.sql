use clean_and_go;
UPDATE clean_and_go.cleaning_supplies SET Current_inventory = 5 WHERE name = 'Dry Sheet';
UPDATE clean_and_go.cleaning_supplies SET Current_inventory = 3 WHERE name = 'Dry Clean Starter kit';
UPDATE clean_and_go.cleaning_supplies SET Current_inventory = 2 WHERE name = 'Softener';
UPDATE clean_and_go.cleaning_supplies SET Current_inventory = 25 WHERE name = 'Towel';

select Expense.ExpenseType, sum(Transaction.AmountDue) as TotalAmount
from Expense, Transaction
where Transaction.ExpenseType = Expense.ExpenseID
group by Transaction.ExpenseType;

select Supplier.FullName as SupplierName, Cleaning_supplies.name as CleaningSupplyProduct, Equipment.EquipmentName as EquipmentProduct
from Supplier, Cleaning_supplies, Equipment
where Cleaning_supplies.Supplier_ID_Number = Supplier.ID_Number or Equipment.Supplier_ID_Number = Supplier.ID_Number
order by Supplier.FullName;

select Cleaning_supplies.name, Cleaning_supplies.Current_inventory, Cleaning_supplies.safety_stock
from Cleaning_supplies
where Current_inventory < safety_stock;

select count(*) as TotalNumberOfEquipment
from Equipment;

select Equipment.ID_Number, Equipment.EquipmentName, equipment_maintenence_Schedule.date, equipment_maintenence_Schedule.description
from equipment_maintenence_Schedule, Equipment
where Equipment.ID_Number = equipment_maintenence_Schedule.Equipment_ID_Number 
and equipment_maintenence_Schedule.date >= '2021-04-01' and equipment_maintenence_Schedule.date <= '2021-04-08';

select Equipment.ID_Number, Equipment.EquipmentName, avg(equipment_Schedule.hours) as AverageHours
from Equipment, equipment_Schedule
where Equipment.ID_Number = equipment_Schedule.Equipment_ID_Number
group by equipment_Schedule.Equipment_ID_Number;

select Employee.ID_Number, Employee.name, employee_schedule.date, employee_schedule.schedule_description
from Employee, employee_schedule
where Employee.ID_Number = employee_schedule.Employee_ID_Number 
and employee_schedule.date >= '2021-11-23' 
and employee_schedule.date <= '2021-11-30'
and employee_schedule.Employee_ID_Number = '1'
order by employee_schedule.date;