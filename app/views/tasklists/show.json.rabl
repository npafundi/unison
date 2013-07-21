object @tasklist

attributes :name

# aliasing 'tasks' to 'tasks_attributes' because that's the format
# Rails tasklists controller expects for accepting nested tasks
child tasks: :tasks_attributes do
  attributes :name, :details, :status
end