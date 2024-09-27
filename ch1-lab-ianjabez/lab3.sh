#!/bin/bash
echo "Running tests..."
echo

##### case 1
output=$(echo "123 123" | ./a.out)
expected_output="Enter two integers, and I will tell you
the relationships they satisfy:
123 is equal to 123
123 is less than or equal to 123
123 is greater than or equal to 123"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

# Print output
echo "Output:"
diff  --old-line-format='⏩ %L' \
      --new-line-format='❌ %L' \
      --unchanged-line-format='✅ %L' \
      <(echo "$expected_output" ) <(echo "$output")

# 等待一下，不然輸出比對結果會被切斷
sleep 0.5
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: Output is correct"
else
  echo "Failed!"
  exit 1
fi

##### case 2
output=$(echo "10 20" | ./a.out)
expected_output="Enter two integers, and I will tell you
the relationships they satisfy:
10 is not equal to 20
10 is less to 20
10 is less than or equal to 20"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

# Print output
echo "Output:"
diff  --old-line-format='⏩ %L' \
      --new-line-format='❌ %L' \
      --unchanged-line-format='✅ %L' \
      <(echo "$expected_output" ) <(echo "$output")

# 等待一下，不然輸出比對結果會被切斷
sleep 0.5
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: Output is correct"
else
  echo "Failed!"
  exit 1
fi

##### case 3
output=$(echo "40 20" | ./a.out)
expected_output="Enter two integers, and I will tell you
the relationships they satisfy:
40 is not equal to 20
40 is greater to 20
40 is greater than or equal to 20"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

# Print output
echo "Output:"
diff  --old-line-format='⏩ %L' \
      --new-line-format='❌ %L' \
      --unchanged-line-format='✅ %L' \
      <(echo "$expected_output" ) <(echo "$output")

# 等待一下，不然輸出比對結果會被切斷
sleep 0.5
if [ "$output" == "$expected_output" ] ; then
  echo "Pass: Output is correct"
else
  echo "Failed!"
  exit 1
fi

echo
echo "All tests passed."

exit 0
