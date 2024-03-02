#!/bin/bash

# Install Java Development Kit (JDK)
sudo apt-get update
sudo apt-get install default-jdk -y

# Create a Git repository
git init
echo "target/" >> .gitignore
git add .
git commit -m "Initial commit"

# Java module for prime number testing (PrimeTester.java)
cat > PrimeTester.java <<EOF
public class PrimeTester {
    public static boolean isPrime(int n) {
        if (n <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(n); i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        int num = Integer.parseInt(args[0]);
        System.out.println(num + " is prime: " + isPrime(num));
    }
}
EOF

# Git commit for the Java module
git add PrimeTester.java
git commit -m "Add PrimeTester module"
