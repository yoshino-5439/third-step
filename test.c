#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<math.h>

int main()
{
int i,j;
double x = 0;//理科合計点,
double y = 0;//英語合計点,
double sx = 0;//理科標準偏差,
double sy = 0;//英語標準偏差 ,
double ax=0;//理科平均点,
double ay = 0;//英語平均点
double tmp = 0;
 double data[2][20] = {{65.0,80.0,67.0,35.0,58.0,60.0,72.0,75.0,68.0,92.0,36.0,50.0,2.0,58.5,46.0,42.0,78.0,62.0,84.0,70.0},
   { 44,87,100,63,52,60,58,73,55,86,29,56,89,23,65,84,64,27,86,84}};//理科と英語の点数
double henn[2][20];//偏差値用配列

                for (i = 0; i < 20; i++)
		{
			x  += data[0][i];
			y += data[1][i];
		}
		ax = x / 20.0;
		ay = y / 20.0;
                for (i = 0; i < 20; i++)
		{
			sx += (data[0][i] - ax)*(data[0][i] - ax);
                        sy += (data[1][i] - ay)*(data[1][i] - ay);
                        henn[0][i] = 50 + (data[0][i] - ax) / 2;
                        henn[1][i] = 50 + (data[1][i] - ay) / 2;
                        printf("理科の%d人目の偏差値は%f\n ",i+1, henn[0][i]);
                        printf("英語の%d人目の偏差値は%f\n ",i+1, henn[1][i]);


		}         
sx = sqrt(sx / 20.0);
sy = sqrt(sy / 20.0);
printf("理科の平均点は%f\n ", ax);
printf("理科の標準偏差は%f\n ", sx);
printf("理科の合計点は%f\n ", x);

printf("英語の平均点は%f\n ", ay);
printf("英語の標準偏差は%f\n ", sy);
printf("英語の合計点は%f\n ", y);

for(i = 0; i< 20;i++)
{
for(j = i+1;j < 20;j++)
{
if (data[0][i] < data[0][j]) {
        tmp =  data[0][i];
        data[0][i] = data[0][j];
        data[0][j] = tmp;
      }
    }
  }
for(i = 0; i< 20;i++)
{
for(j = i+1;j < 20;j++)
{
if (data[1][i] < data[1][j]) {
        tmp =  data[1][i];
        data[1][i] = data[1][j];
        data[1][j] = tmp;
      }
    }
  }
printf("理科の点数の高い順位並べると\n");
for (i=0; i<20; ++i)
{
    printf("%f\n", data[0][i]);

}
printf("英語の点数の高い順に並べると\n");
for (i=0; i<20; ++i)
{
    printf("%f\n", data[1][i]);

}



      return 0;
}

