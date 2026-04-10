import java.util.*;
 class pattern4
{
    public static void main(String[] args)
    {
int rows=3;
int col=10;
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

