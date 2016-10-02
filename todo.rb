def outstanding_count(todos)
   return nil if todos == []
   outstanding = 0
   for todo in todos
      outstanding += 1 if todo[:done] == false
   end
   return outstanding
end

def outstanding_todos(todos)  
   return nil if todos == []
   outstandings = []
   for todo in todos
         outstandings << todo if todo[:done] == false
   end
   return outstandings

end

