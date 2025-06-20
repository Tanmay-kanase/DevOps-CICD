#   VARIABLES
name="DevOps Engineer"
age=30
readonly company="TechCorp"
echo "Hello, $name! Welcome to $company."

#   COMMAND SUBSTITUTION
current_time=$(date)
echo "Script executed at: $current_time"

#   CONDITIONALS (IF/ELSE)
if [ "$age" -ge 18 ]; then
    echo "You are eligible to access the system."
else
    echo "Access denied."
fi

#   USER INPUT
read -p "Enter your environment (dev/staging/prod): " environment
echo "You chose: $environment"

#   CASE STATEMENT
case "$environment" in
    dev)
        echo "Setting up development environment..."
        ;;
    staging)
        echo "Setting up staging environment..."
        ;;
    prod)
        echo "⚠️ Setting up production environment..."
        ;;
    *)
        echo "Unknown environment selected."
        ;;
esac

#   LOOPS
echo "Counting from 1 to 5:"
for i in {1..5}; do
    echo "  - Number: $i"
done

#   WHILE LOOP
counter=1
while [ $counter -le 3 ]; do
    echo "  - While loop iteration $counter"
    ((counter++))
done

#   ARRAYS
colors=("red" "green" "blue")
echo "Available colors: ${colors[*]}"
echo "First color: ${colors[0]}"

#   FUNCTIONS
greet_user() {
    echo "Hello, $1! This is a function."
}
greet_user "DevOps Ninja"

#   ARGUMENTS
echo "Script name: $0"
echo "First arg: $1"
echo "Second arg: $2"
echo "Total args: $#"

#   EXIT STATUS
ls /not/a/real/path &>/dev/null
if [ $? -ne 0 ]; then
    echo "⚠️ Directory doesn't exist!"
fi

#   TRAPS (CLEANUP ON EXIT)
cleanup() {
    echo "🧹 Cleaning up before exit..."
}
trap cleanup EXIT

#   DONE
echo "✅ Bash basics script completed."
