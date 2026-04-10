import java.util.*;
 class pattern5
{
    public static void main(String[] args)
    {
int rows=10;
int col=3;
        for(int i=0;i<rows;i++)
        {
            for(int j=0;j<col;j++)
            {
                System.out.print("*");
                if(j!=(col-1))
                {
                    System.out.print("_");
                }
            }
            System.out.println();        }
    }
}

