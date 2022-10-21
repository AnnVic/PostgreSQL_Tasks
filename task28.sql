UPDATE cd.facilities fc
SET membercost = (
      SELECT membercost * 1.1
      FROM cd.facilities
      WHERE facid = 0
   ),
   guestcost = (
      SELECT guestcost * 1.1
      FROM cd.facilities
      WHERE facid = 0
   )
WHERE fc.facid = 1;