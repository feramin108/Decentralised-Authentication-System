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
