clear all;
close all;

ts = 0.01;  % ts: �ð� ������ ��ŭ ��ȭ�ϴ����� �ǹ��ϴ� ��
time = -5 : ts : 5;  % time: -5 ~ 5 ������ �ð� ������ ts(0.01)��ŭ ��ȭ�ϴ� ���� ǥ���ϱ� ���� �ð� ����
tau = 2;  % tau: �ﰢ �� �簢 �޽��� ǥ���ϱ� ���� ���Ǵ� Ÿ��(��)

A = 1;

X = Function_201401793_Rect(time, ts, tau);  % X: �簢 �޽�, Y: �ﰢ �޽�
Y = Function_201401793_Triangular(time, ts, tau);  % �ﰢ �� �簢 �޽��� ǥ���ϱ� ���� ������ ���� (�Լ� ȣ��)

figure
plot(time, A*X);  % �簢 �޽��� time ���� ������ ��ǥ��� ǥ���� ���¸� ������
hold on;  % �Ŀ� �ﰢ �޽��� ǥ���� �� ������ �簢 �޽��� �������� �ʵ��� �ϱ� ���� ������ 

plot(time, A*Y);  % �ﰢ �޽��� time ���� ������ ��ǥ��� ǥ���� ���¸� ������
grid on;  % ��ǥ�� ���� üũ ���� ���·� �������� �����ֱ� ���� ���

axis([min(time), max(time), 0, 1.5*A]);  % x���� time�� �ּҰ�(-5) ~ time�� �ִ밪(5) ���̿��� ǥ��
                                         % y���� 0 ~ 1.5 ���̿��� ǥ��
xlabel('time[sec]');  % x�༱ ��ó�� 'time[sec]'��� ������ �߰���
title('rect(t) & triangular(t)');  % ������ 'rect(t) & triangular(t)'��� ������
legend('rect(t)', 'triangular(t)');  % ���ʸ� �߰��� ���� �̸��� ���� 'rect(t)', 'triangular(t)' ���� ������