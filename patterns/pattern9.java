import java.util.*;
 class pattern9
{
    public static void main(String[] args)
    {
int n=5;
int col=20;
        for(int i=0;i<n;i++)
        {
            for(int j=0;j<col;j++)
            {
                if(i==0 || i==n-1 || j==0 || j==col-1)
                System.out.print("*");
                else
                System.out.print(" ");
              
            }
            System.out.println();        }
    }
}

