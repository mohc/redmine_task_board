module TaskboardHelper
def estimated_size(issue)
   return "" if issue.estimated_hours.nil?
   if issue.estimated_hours>=15
       size="-L"
   else
       if issue.estimated_hours>4
           size="-M"
       else
           size="-S"
       end
   end
   return size
end
end
