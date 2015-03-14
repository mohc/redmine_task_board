module TaskboardHelper
def estimated_size(issue)
   return "" if issue.estimated_hours.nil?
   if issue.estimated_hours>=15
       size="-L[21]"
   elsif issue.estimated_hours>=8
           size="-L[13]"
   elsif issue.estimated_hours>5
           size="-M[8]"
   elsif issue.estimated_hours>=3
           size="-M[5]"
   elsif issue.estimated_hours>=2
           size="-S[3]"
   else
           size="-S[1]"
   end
   return size
end
end
