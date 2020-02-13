function employee()
     {   
            var emp=[{name:"Ritu",age:"23" ,salary:"25000",DOB:"12 December 1996"},
            {name:"Rishi",age:"23" ,salary:"40000",DOB:"10 May 1996"},
            {name:"Shashi",age:"17" ,salary:"30000",DOB:"11 January 2003"},
            {name:"Vikas",age:"24" ,salary:"35000",DOB:"7 June 1995"},
            {name:"Tarun",age:"24" ,salary:"51000",DOB:"11 July 1995"},
            {name:"Ravi",age:"23" ,salary:"500",DOB:"19 December 1996"}];
console.log("[b.]Filter all employees with salary greater than 5000.");

        emp.filter(function(empl){
            if(empl.salary > 5000)
                {
                    console.log(empl);  
                }
             
        });

console.log("[c.]Group employee on the basis of their age.");
        let groupedData = emp.reduce((e, d) => {
                 if (Object.keys(e).includes(d.age)) {
                   return e;
                 }
                 e[d.age] = emp.filter(g => g.age === d.age);
                 return e;
               }, {});

               console.log(groupedData);
             
        
console.log("[d.]Fetch employees with salary less than 1000 and age greater than 20. Then give them an increment 5 times their salary.");
       let x=[];
        emp.filter(function(empl){
            if(empl.salary < 1000 && empl.age>20)
                {   empl.salary *= 5;
                    x=empl;
                   
                }
             
        });



    }