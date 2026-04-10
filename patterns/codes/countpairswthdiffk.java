/*
Given an array arr[] of positive integers. Find the number of pairs of integers whose difference equals a given number k.
Note: (a, b) and (b, a) are considered the same. Also, the same numbers at different indices are considered different.

Examples:

Input: arr[] = [1, 5, 3, 4, 2], k = 3
Output: 2
Explanation: There are 2 pairs with difference 3,the pairs are {1, 4} and {5, 2}
*/

class Solution {
    int countPairsWithDiffK(int[] arr, int k) {
      int c=0;
      Arrays.sort(arr);
      for(int i=arr.length-1;i>=0;i--)
      {
          for(int j=0;j<i;j++)
          {
              if(arr[i]-arr[j]==k)
              {
                  c++;
              }
              else if(arr[i]-arr[j]<k)
              {
                  break;
              }
          }
      }
return c;
    }
}
