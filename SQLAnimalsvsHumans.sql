

-- Isolate fish and their swim speed(in MPH) respectively

Select Fish, Waterspeed
from Projects..AnimalSpeeds
order by 2 desc

-- Isolate animals and their speeds(in MPH) on land

Select Animal, LandSpeed
from Projects..AnimalSpeeds
order by 2 desc

-- Identifies fastest Fish

Select Fish as FastestFish, Waterspeed
from Projects..AnimalSpeeds
Where Waterspeed = (Select MAX(Waterspeed) 	From AnimalSpeeds)


-- Identifies slowest Fish

Select Fish as SlowestFish, Waterspeed
from Projects..AnimalSpeeds
where Waterspeed = (Select MIN(Waterspeed) From AnimalSpeeds)

-- Isolates Michael Phelp's speed

Select Fish as Michael, Waterspeed
from Projects..animalspeeds
where fish = 'michael phelps'

--Compares all animals to Michael Phelps

Select Fish, Waterspeed, Round(waterspeed/6,2) as Times_Faster_Than_Phelps
from Projects..animalspeeds
order by 3 desc

--Compares animals to average Human swimmer

Select Fish, Waterspeed, Round(waterspeed/2.2,2) as Times_Faster_Than_AvgPerson
from Projects..animalspeeds
order by 3 desc

--Seconds needed to complete 100m while maintaining top speed

Select Fish, Waterspeed, Round(100/(Waterspeed/2.237),2) as Time_to_Complete_100m
from Projects..animalspeeds
order by 3 

-- Identifies fastest Animal

Select Animal as FastestAnimal, Landspeed 
from Projects..AnimalSpeeds
Where Landspeed = (Select MAX(Landspeed) 	From AnimalSpeeds)


-- Identifies slowest Animal MPH

Select Animal as SlowestAnimal, Landspeed
from Projects..AnimalSpeeds
Where Landspeed = (Select MIN(Landspeed) 	From AnimalSpeeds)

-- Isolates Usain Bolt's speed in MPH

Select Animal as Usain, Landspeed
from Projects..animalspeeds
where Animal = 'Usain Bolt'

--Compares all animals to Usain Bolt

Select Animal, Landspeed, Round(Landspeed/27.79, 2) as Times_Faster_Than_Bolt
from Projects..animalspeeds
order by 3 desc

--Compares animals to average human

Select Animal, Landspeed, Round(Landspeed/11, 2) as Times_Faster_Than_Average
from Projects..animalspeeds
order by 3 desc

--Seconds needed to complete 100m while maintaining top speed

Select Animal, Landspeed, Round(100/(Landspeed/2.237),3) as Time_to_Run_100m
from Projects..animalspeeds
order by 3 

--a tiger can outrun and outswim an average human, hopefully we're better at hide and seek :0