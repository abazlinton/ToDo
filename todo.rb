def outstanding_count_list(lists, list_name)

	for list in lists
		if list[:name] == list_name
			return list[:todos].length
		end
	end
	return nil
end

def outstanding_count_global(lists)
	return nil if lists == []
	global_count = 0
	for list in lists
		global_count += outstanding_count_list(lists, list[:name])
	end
	return global_count
end

def outstanding_todos_list(lists, list_name)
	todos = []
	for list in lists
		if list[:name] == list_name
			return nil if list[:todos] == []
			for todo in list[:todos]
				if todo[:done] == false
					todos << todo
				end
			end
		end
	end
	return todos

end

def outstanding_todos_global(list)
end