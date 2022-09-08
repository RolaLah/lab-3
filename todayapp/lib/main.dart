import 'dart:js_util';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color myDefultColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              shadowColor: Colors.amber,
              backgroundColor: Color.fromARGB(255, 197, 113, 236),
              title: Text("Welcome to my app :)"),
            ),
            body: Container(
              color: myDefultColor,
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Careem",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 79, 226, 84)),
                    ),
                    Image(
                      image: NetworkImage(
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWwAAACLCAMAAAByd1MFAAAAgVBMVEX///9EoT8xmyo3nTE/nzrf7N+31rY2nDA9nzi72LqmzaQ6njXA27+EvIKdyJtjrWAsmSVqsGcnmB+PwY3u9e3a6dn1+fXM4stOpUnV59R9uXqBu3/o8efc69yLwIlbqld0tXGw06+gyp5Tp0/w9vCr0Kl4t3VgrFyXxpUdlhLH38ZRdSl4AAAKAElEQVR4nO2bfWOyLhfHEyksXCGV2pPVVqv1/l/gbT7AAbHcdW3X/O0+n782IdQvh8PhgIMBgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiAIgiD/UVZZ8tOP8P/DKyHsuv3pp/htJPNotj7G9uUZ9Twu31HuL2SZEk5p4MtXq0B4dwI5/5HH+pWEknolLDIKVqS6zoPVDz3bb2MnPQXLYMmZq4KG0SN/xBvVYntyB0oiUELef+wBfxHKV5T+eQOKBCzxo9YmkK5MOZTUI7pkZ3SDx1Htv2YdGJKKkyo5M6PE+8BZ8m95bxV7lApQRvnwB5/ylzA33YiEZcNMRYX8rbHkQT7NzXAW1HLMi6h03Ozg/nU8TMbH8+R8DJeOzogXNaBweDuOHFWXt/FoFCbdhs/9tqPRONl1toDTbrV0r4QXu9Vquejazl9iiE1Cu3h0D8PF1fHD03jjCcKYzzn3GZHp1Xbqrx+k5KP+fXjIf0FmVr3whRYN+ezezPxJ9iuZp7KuLehL44kHY7+OrV7KC6ssEPfHEIexWTM+R6IsIevb47t+DWMQ4QX7ZvmSUDluXh5dJDPdPeUkNd98UrsoPi1/w0nQGD7bTJgNBYxNWy02njJi1RaZZZfj2n54IfZwr+YeytgRtJVJXy0lAuL9ixTniwrxgsD1kkO5tC+droTBtZDSm+zhi5tixxfS9FXxiwya7XBxdj/rVPJm7UCaA0+JXVj2RBpPSmb1O66Y1ZbIGvf7eiblGwTk0s0FxnPXK1dCCuBLDLG3XNmXFjuxX7iG2a7mztDz3bV9D/axFnsDTam+SMu3HEm7FY/9i2Xy4upJQQ4dvda5Xeo7YBxAsU96KGixp80XVpp4jZ4PpWs0lU0KMLNCseesWdcrKrluzVxz04+S2LZiP7FSCYqdaqGU2NmjlkpNAMf2nskROtbQYmc34ajK1/lM5G7MyA31ggs0MBoE1DS4QA1GLfZ5ChxALfYUak3ziIb50H8HZhh6M+QJitrgxqBvlNg0cg+FfPC1DE7qiBB+llVtLjwPvaL15rAXRoQg6yGtxKZr6GwrsROgHhf76ygMj5kHWiIwHt+C2oFI58e89vwNrHG5mt6U2F6L2wk2L45Zubxn73IShcHksdI1qT3GMhP6xYL6tZXY+q1ziySimPxi7U2pnKsJbnfQIx9kxWAmWKyVg95mug9k7UjGpp+mfh5IW9FlAIqMSddIe/aCocjDrbVpA4s3YJLVtYk1WPMwd3NMdsNCqxdVGKTG2u6mvIs/UReP2lqZceOhcmLKfZlik/1xtd0m0BrqlkQ03m13Rw8+JuzgfvD+sWkucPUUSKppxhKb7UG8o90CfbMaGirb9tU17d65dedYlcgqiWaIzep7nvaW6wi8ejacg8mDNBYVP83WNWlrjVi14jTFFkZKRHtNvxHjKdsm9aLuqMa6bGRPVLfxaiUExSZg0BgTu9HHIBvnOxI3fUTN/bzasTTEJqZKqmeII7yvW1LeP7Wbhlyr29ShBBCbQeli073APtajkvcu1HajzC+ozj5AsS2LDFV45gq21F5dUP4PBo2j9qk2bVnqBy3bqAh2sD3/CEvU43jB+o/e/Rmv84ps+jUNJnoxUV4AYjMr2aG8CGtm7XLqbhOlgz5bGS2LWWWXldfRYvOJUS+GBwnMJpTXtpPMX0TkByXcnqH+kKWyx6bY9nJQeWzhbKrerGOlfId6lBNnvru+T+W0tdjEmluiVm+hdgepKynz9+jdR/95ZReL1T3hrxirveOm2OagzUe+8gtpOGoyrtWtfqemR3/sqp0Fxn212NK8K9jdZlY+Va+/vkfsubauz295xaMDKRP+Gh04N8QGW5sFSx1s+S7UfFgYYCwe17bSiVrs1Hrqkeo1+5X1Ev97xNbhFPvsGnW7ln7bgtcptv3WYTMZ526pTP8/SX3VVNEcyI203taeaG/fLLbO3n023Jm6Ev6PxG4sgkctielGS4d77WVHsT1aNK6zfnZk0R4DfbfYYHDST/0wemaWDbEbvXnsKHZpm6uO46CafMydGkjYavPfLTaI5NlndjsPD/cO4Evae5CaT4rd1bJ7LPZVJ+U+Efydn7/5c7HHHW2VHu61O7uRwGy8T2KDd2CdMwIx3IznjBGNstbnYidabPIIebjX3oIHfVi9x2IPgE2Q0/PqBWctqVifw9VSsRvZ5zXaxdbxRbAdPqLMI6mVH1s9rF0uefopNvCcjxyJERju1WcK9puAjMZTsbV8pMsXO6kSu8vk0k+x4Wmo9hPB5w8YS9Qqld7UQItdRXoPxFZ95s52WKhMStC8a5Oeig1PBfOWu0wFPOmnxr/DxtQDdxBbT86uPJ4NWIB3GAg9FRt6bbBzAYiLoFqfYVXW69jR0Pb3XOzVp1ZUOl3XJSnXV7ET41yFzOwkyaja7Fans5VIdiZnMFiotjqIDbpZupIFoZm5OqglK3EdTNsZHw/2VWyw7Vo8nciAwS4mVLsZWboN5UaCxseRev+7i9h6B9cTzRE1kdLIc4NljWwmwG9CwBv0VmzzY7H7AQW+OYdJcjvOU2F0RPl1nh7Qwtp4BfupXcQegDWksE7Jbme5ttIYOntwksFqLN7kQ0qAbYL+in1qrOWKpYp53Kjgo3h7tcanxmHGkIPqdQLoodhjuKU9A65k91Ke6TPcC/xa00/hLv21PKgjtN/pr9hgf+8x1SlenX+nYlqFBsOzZ37g10XsQQS/2CHeNVwOh6vxXJ+JMo4qz+H5Ncazcb68WYXXNzX89CHyHoudu+HWw6EAWU1MC3hojPDZIdoLYqWmuokdc+O+/L4SN0/7fUBnbh77CIpEAYNNfNTOvM9iD7b0cXq60FrZTWYoSyltdlU3sQfbJ2PK/M41bju5V980rUOpXoudj+gnabWAAxtrOPO60l791U3sJ2OKWDsOcfrIJthFVey52IPzo70XKowdjxaD5DMdFnYUe3B6a81rU3lsVG+3CQq/9Oi72IPToXnwsLo7S631y5A5eoa8Dz4vdusOGxWR62u5kXBuXFDyBufS3os9GCwPzo+DSNr8VCy2e4Yyfzz4I7EHi7XkdjdzMWvZgo7nwrdrB/ZHav8BsXP/MKUERgOUE7Fxv/Uqkqzy3TTwRVoM+aHkJXXi6lVUF8ij1N5pkgrGy9ZoHuQL7/ro09PjRcLahGf2I44ILfHtfeawLmnkOHXJZfCvGB7Xnix3PQSLXh8ccTiNsosvhaCXbFSF24vpa0W175PU/78+SUMvwul673HuXdbT8GleL75NNpc04N7+cB07+uV2iUpmdo4rmVUlkW3zSf2b6B+fht/ePzDe4rfqCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCIIgCPKc/wF8KpcFbXfbfwAAAABJRU5ErkJggg=="),
                      height: 150,
                      width: 400,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.emoji_emotions,
                          color: Color.fromARGB(255, 240, 152, 181),
                          size: 40,
                        ),
                        Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 134, 221, 243),
                          size: 35,
                        ),
                        Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 241, 228, 111),
                          size: 35,
                        ),
                        Icon(
                          Icons.report,
                          color: Color.fromARGB(255, 223, 4, 4),
                          size: 35,
                        ),
                      ],
                    )
                  ],
                ),
                Divider(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Uber",
                      style: TextStyle(
                          fontSize: 30, color: Color.fromARGB(255, 17, 19, 17)),
                    ),
                    Image(
                      image: NetworkImage(
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASAAAACvCAMAAABqzPMLAAAAclBMVEX///8AAAAZGRmcnJxISEiRkZHBwcEpKSm7u7s5OTmmpqbX19deXl55eXkUFBT39/ft7e0dHR0zMzP09PTJyclsbGzR0dHm5uYLCwtZWVmMjIzLy8uioqLh4eGwsLBBQUGDg4Nzc3NQUFBkZGQlJSVERESqDX4eAAAFvUlEQVR4nO2c6XqyOhRGoU6MMogiCo7t/d/iEcgEJMEWj+D3vOtXxR2G1bAztoYBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH6NdfVrdpog91LHXK36M/24fMstjsvBJFiaoGVEgmb1Z1omf8stjsuCPOtaK2jVFPRFPjpvucVxgaAeIKgHCOoBgnqAoB4gqAcI6gGCeoCgHiCoBwjqAYJ6eJUgJ7PjBz+++9RlQ+d+jmN7ftHNsggEJc+FvpgXCNq4bM6kIrYK7SXTY9aInxWbdohNvjo9fg4Kco+Xvz3hQIYLSq5mh1xdjwon7oT7x1btmHNB6YVGLYY+658YKqi4rLt+TNNedGpFzekmC4/8sBHFBe14/EcKcrvVgXAOJScKfanOMvwoxlFBViGc/xMFnVR6Sroz1qkufCYEUkG5WN8+UNDc1LFv9wIKbbhoSHriDxQkMvcPh0szwUSnxlnclfild5jNFtuGUB4uFXT4Hx6/n9cIulnHYhMEm2KXiE34SmzvU+Gb1XKXlg1XuLMEp1FKY9uCvMODcRaZXiHI3gmtdOAKT7cWTjLjhy2hiQssfraYHmwIinbh5nGBcfqJLxAUdaq+E7EvPXYw4cfa/UhetWiaEQWNPJ4ZLMiW1HwWb67ZUOKbHrp22/87/e5MXjJB0KkT/V6GCoqlmYEtxZpbcoR1CFaS/tGGJWtyAS5onMwsMFTQTF6C+fgmAlmHTzo63dHB173WxwWNlHk4AwV5qiL0vKRIsicfFRmltUWACRp/QmWgIMWI69HpOZOInyol03dopRjFhueGESZIPy/wDoYJuqvL+DQmeXwIPPJB2RumBrPqHaOC4lQV/zaGCdL8gl2ap8sTJzQFKdskt3FKKshX1tC3MUyQ7v5pmcsjz+bk5/2Pp4KesnoH583rjckgQVddG0PHEGW7LvSi+2gIGj9HDxOk7cSxdux3gsqU9c8ISnRnXv5NUHUfExSkrQ1Wa48iFXTUlDF2fxNU3cenCXJo0Btq0EcKYs/3m4VDthohCPqy+1hN7RVrP7uU1riBCfJ0rdgPCbI3/CrzpdtH1XOYkKATfdibutOaegpBT/eD6Dsa6ZoCgQkJStmwR73Wx+e6ftGTPtIFntIJG60/+cQTEmSw2qGeeWFvWEdQrCzDBld1U0enxLLnBldTEsRyqam6dzZMkozmlVWI1ZlaCRu6PveOTUkQX6zaKiJYHZMIuinSdHuO0KUv3FmVthoTjVMSZPAZdvntiH2YjqDO4iCB9ZxsMoPIZqmv8gLLTOxUTUrQkT2tdLjBHlUqSLbAbAi9aFYt+RHplJBrm2uhJzYpQWwzjvSGmn1g2bKPxCpv9mRrgZLWoB7sbTvB0xAkJGFz0WzsW1uj5AuHs1amToVCvLoU/FW+tJqDgNbSLzqjPy1BAW/IHkk058sOx7yxmq4SZN4cIcMGuZDUxTl9oS7ecjFVW6yJM2NyomkJMsLGljj7vl0sl8vF9t7d+6Ncm9+SVJT4jbV5sT4G4k6FzCcF3IsnnK29sjoRQUYqpKGK/X5vylDv7thHFY1iX63RfiYp0NhQxToaUxNkFMqNYtWzePTrlqAsUhUp6S66Zrpwc++zwMkJMlxPc+ezpDWJzuaDrHaSEsgk02m+Otz8znmnc3qCjFB974lR0GW9liDLOG5VpQ6ykUtwUlbVlbgmPUFBRnCU33i5WcVVCjIC+WThSrXbKVQYPUx3qMFx4nZO+c6q36tLkzgRRFNx3UfctmtFFOumJ8Nu6xi3dgEbzYXoCWH5wtOer/TvCtJD818t0P+8QN6KzUxo3OOt37dX7hF/Z8krvvvdycwFuYB20nscguTkOHmeO87pub+6qElZKe1KB2OzfBQoOSXjry4DAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADgo/kPvAhKQFY7wBAAAAAASUVORK5CYII="),
                      height: 150,
                      width: 400,
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "jeeny",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 240, 21, 156)),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.emoji_emotions,
                          color: Color.fromARGB(255, 240, 152, 181),
                          size: 40,
                        ),
                        Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 134, 221, 243),
                          size: 35,
                        ),
                        Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 241, 228, 111),
                          size: 35,
                        ),
                        Icon(
                          Icons.report,
                          color: Color.fromARGB(255, 223, 4, 4),
                          size: 35,
                        ),
                      ],
                    ),
                    Image(
                      image: NetworkImage(
                          "data:image/png;base64,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"),
                      height: 150,
                      width: 400,
                    ),
                  ],
                ),
                Divider(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              myDefultColor =
                                  Color.fromARGB(255, 247, 120, 111);
                            });
                          },
                          child: Text(
                            "Red",
                            style: TextStyle(
                                fontSize: 50,
                                color: Color.fromARGB(255, 241, 78, 66)),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              myDefultColor =
                                  Color.fromARGB(255, 169, 222, 247);
                            });
                          },
                          child: Text(
                            "blue",
                            style: TextStyle(
                                fontSize: 50,
                                color: Color.fromARGB(255, 153, 183, 240)),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              myDefultColor =
                                  Color.fromARGB(255, 250, 120, 250);
                            });
                          },
                          child: Text(
                            "Purple",
                            style: TextStyle(
                                fontSize: 50,
                                color: Color.fromARGB(255, 229, 114, 240)),
                          ))
                    ],
                  ),
                )
              ]),
            )));
  }
}
