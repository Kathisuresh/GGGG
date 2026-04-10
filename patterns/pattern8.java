import java.util.*;
 class pattern8
{
    public static void main(String[] args)
    {
int n=6;
int m=3;
        for(int i=0;i<n;i++)
        {
            for(int j=0;j<n-i;j++)
            {
                System.out.print(" ");
                
            }
            for(int k=0;k<m+i;k++)
            {
                System.out.print("*");
            }
            System.out.println();      
          }
    }
}

