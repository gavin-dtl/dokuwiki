a:71:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"mutex:autolock介绍";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:429:"Mutex是互斥类，用于多线程访问同一个资源的时候，保证一次只有一个线程能访问该资源。在《Windows核心编程》①一书中，对于这种互斥访问有一个很形象的比喻：想象你在飞机上如厕，这时卫生间的信息牌上显示“有人”，你必须等里面的人出来后才可进去。这就是互斥的含义。
下面来看Mutex的实现方式，它们都很简单。";}i:2;i:35;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:464;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:466;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"Mutex介绍";i:1;i:3;i:2;i:466;}i:2;i:466;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:466;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:466;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"其代码如下所示：
[";}i:2;i:488;}i:11;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:514;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:">Thread.h::Mutex的声明和实现]";}i:2;i:516;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:557;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1668:"
inline Mutex::Mutex( type, const* name) {  
     if(type == SHARED) {  
        //type如果是SHARED，则表明这个Mutex支持跨进程的线程同步。
       //以后我们在Audio系统和Surface系统中会经常见到这种用法。
         pthread_mutexattr_t attr;  
         pthread_mutexattr_init(&attr);  
         pthread_mutexattr_setpshared(&attr, PTHREAD_PROCESS_SHARED);  
         pthread_mutex_init(&mMutex, &attr);  
         pthread_mutexattr_destroy(&attr);  
         pthread_mutex_init(&mMutex, NULL);  
	}
}
 inline Mutex::~Mutex() {  
     pthread_mutex_destroy(&mMutex);
 }
 inline status_t Mutex::lock() {  
     return -pthread_mutex_lock(&mMutex);  
 }
 inline Mutex::unlock() {  
     pthread_mutex_unlock(&mMutex);  
 }
 inline status_t Mutex::tryLock() {  
     return -pthread_mutex_trylock(&mMutex); 
 }

inline Mutex::Mutex(int type, const char* name) {
    if (type == SHARED) {
       //type如果是SHARED，则表明这个Mutex支持跨进程的线程同步。
      //以后我们在Audio系统和Surface系统中会经常见到这种用法。
        pthread_mutexattr_t attr;
        pthread_mutexattr_init(&attr);
        pthread_mutexattr_setpshared(&attr, PTHREAD_PROCESS_SHARED);
        pthread_mutex_init(&mMutex, &attr);
        pthread_mutexattr_destroy(&attr);
    } else {
        pthread_mutex_init(&mMutex, NULL);
    }
}
inline Mutex::~Mutex() {
    pthread_mutex_destroy(&mMutex);
}
inline status_t Mutex::lock() {
    return -pthread_mutex_lock(&mMutex);
}
inline void Mutex::unlock() {
    pthread_mutex_unlock(&mMutex);
}
inline status_t Mutex::tryLock() {
    return -pthread_mutex_trylock(&mMutex);
}
";i:1;s:3:"cpp";i:2;N;}i:2;i:557;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:557;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:114:"关于Mutex的使用，除了初始化外，最重要的是lock和unlock函数的使用，它们的用法如下：";}i:2;i:2249;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2363;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2363;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:261:"要想独占卫生间，必须先调用Mutex的lock函数。这样，这个区域就被锁住了。如果这块区域之前已被别人锁住，lock函数则会等待，直到可以进入这块区域为止。系统保证一次只有一个线程能lock成功。 ";}i:2;i:2365;}i:20;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2626;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:128:"
当你“方便”完毕，记得调用Mutex的unlock以释放互斥区域。这样，其他人的lock才可以成功返回。 ";}i:2;i:2628;}i:22;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2756;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:"
另外，Mutex还提供了一个trylock函数，该函数只是尝试去锁住该区域，使用者需要根据trylock的返回值来判断是否成功锁住了该区域。";}i:2;i:2758;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2931;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2931;}i:26;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:2933;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"注意";}i:2;i:2935;}i:28;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:2941;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:254:"　以上这些内容都和Raw API有关，不了解它的读者可自行学习相关知识。在Android系统中，多线程也是常见和重要的编程手段，务必请大家重视。Mutex类确实比Raw API方便好用，不过还是稍显麻烦。";}i:2;i:2943;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3197;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3197;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:157:"AutoLock类是定义在Mutex内部的一个类，它其实是一帮“懒人”搞出来的，为什么这么说呢？先来看看使用Mutex有多麻烦： ";}i:2;i:3199;}i:33;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3356;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"
显示调用Mutex的lock。 ";}i:2;i:3358;}i:35;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3387;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"
在某个时候记住要调用该Mutex的unlock。 ";}i:2;i:3389;}i:37;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3441;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3443;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3443;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:433:"以上这些操作都必须一一对应，否则会出现“死锁”！在有些代码中，如果判断分支特别多，你会发现unlock这句代码被写得比比皆是，如果稍有不慎，在某处就会忘了写它。有什么好办法能解决这个问题吗？终于有人想出来一个好办法，就是充分利用了C++的构造和析构函数，只需看一看AutoLock的定义就会明白。代码如下所示：
[";}i:2;i:3445;}i:41;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:3878;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:">Thread.h Mutex::Autolock声明和实现]   ";}i:2;i:3880;}i:43;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3930;}i:44;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:733:"
	1. class Autolock {  
	2.     public:  
	3.         //构造的时候调用lock。  
	4.         inline Autolock(Mutex& mutex) : mLock(mutex)  { mLock.lock(); }  
	5.         inline Autolock(Mutex* mutex) : mLock(*mutex) { mLock.lock(); }  
	6.         //析构的时候调用unlock。  
	7.         inline ~Autolock() { mLock.unlock(); }  
	8.     private:  
	9.         Mutex& mLock;  

class Autolock {
    public:
        //构造的时候调用lock。
        inline Autolock(Mutex& mutex) : mLock(mutex)  { mLock.lock(); }
        inline Autolock(Mutex* mutex) : mLock(*mutex) { mLock.lock(); }
        //析构的时候调用unlock。
        inline ~Autolock() { mLock.unlock(); }
    private:
        Mutex& mLock;
    };
";i:1;s:3:"cpp";i:2;N;}i:2;i:3930;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3930;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"AutoLock的用法很简单：";}i:2;i:4677;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4706;}i:48;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:4706;}i:49;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:4706;}i:50;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:4706;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" 先定义一个Mutex，如 Mutex xlock。";}i:2;i:4710;}i:52;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:4752;}i:53;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:4752;}i:54;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:4752;}i:55;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:4752;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:" 在使用xlock的地方，定义一个AutoLock，如 Mutex::Autolock autoLock（xlock）。";}i:2;i:4756;}i:57;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:4848;}i:58;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:4848;}i:59;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:4848;}i:60;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:4848;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:286:" 由于C++对象的构造和析构函数都是自动被调用的，所以在AutoLock的生命周期内，xlock的lock和unlock也就自动被调用了，这样就省去了重复书写unlock的麻烦，而且lock和unlock的调用肯定是一一对应的，这样就绝对不会出错。";}i:2;i:4852;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:5138;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:5138;}i:64;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:5138;}i:65;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5142;}i:66;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"Mutex.h";i:1;i:3;i:2;i:5142;}i:2;i:5142;}i:67;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5142;}i:68;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3744:"
/*
 * Copyright (C) 2007 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _LIBS_UTILS_MUTEX_H
#define _LIBS_UTILS_MUTEX_H

#include <stdint.h>
#include <sys/types.h>
#include <time.h>

#if defined(HAVE_PTHREADS)
# include <pthread.h>
#endif

#include <utils/Errors.h>

// ---------------------------------------------------------------------------
namespace android {
// ---------------------------------------------------------------------------

class Condition;

/*
 * Simple mutex class.  The implementation is system-dependent.
 *
 * The mutex must be unlocked by the thread that locked it.  They are not
 * recursive, i.e. the same thread can't lock it multiple times.
 */
class Mutex {
public:
    enum {
        PRIVATE = 0,
        SHARED = 1
    };
    
                Mutex();
                Mutex(const char* name);
                Mutex(int type, const char* name = NULL);
                ~Mutex();

    // lock or unlock the mutex
    status_t    lock();
    void        unlock();

    // lock if possible; returns 0 on success, error otherwise
    status_t    tryLock();

    // Manages the mutex automatically. It'll be locked when Autolock is
    // constructed and released when Autolock goes out of scope.
    class Autolock {
    public:
        inline Autolock(Mutex& mutex) : mLock(mutex)  { mLock.lock(); }
        inline Autolock(Mutex* mutex) : mLock(*mutex) { mLock.lock(); }
        inline ~Autolock() { mLock.unlock(); }
    private:
        Mutex& mLock;
    };

private:
    friend class Condition;
    
    // A mutex cannot be copied
                Mutex(const Mutex&);
    Mutex&      operator = (const Mutex&);
    
#if defined(HAVE_PTHREADS)
    pthread_mutex_t mMutex;
#else
    void    _init();
    void*   mState;
#endif
};

// ---------------------------------------------------------------------------

#if defined(HAVE_PTHREADS)

inline Mutex::Mutex() {
    pthread_mutex_init(&mMutex, NULL);
}
inline Mutex::Mutex(const char* name) {
    pthread_mutex_init(&mMutex, NULL);
}
inline Mutex::Mutex(int type, const char* name) {
    if (type == SHARED) {
        pthread_mutexattr_t attr;
        pthread_mutexattr_init(&attr);
        pthread_mutexattr_setpshared(&attr, PTHREAD_PROCESS_SHARED);
        pthread_mutex_init(&mMutex, &attr);
        pthread_mutexattr_destroy(&attr);
    } else {
        pthread_mutex_init(&mMutex, NULL);
    }
}
inline Mutex::~Mutex() {
    pthread_mutex_destroy(&mMutex);
}
inline status_t Mutex::lock() {
    return -pthread_mutex_lock(&mMutex);
}
inline void Mutex::unlock() {
    pthread_mutex_unlock(&mMutex);
}
inline status_t Mutex::tryLock() {
    return -pthread_mutex_trylock(&mMutex);
}

#endif // HAVE_PTHREADS

// ---------------------------------------------------------------------------

/*
 * Automatic mutex.  Declare one of these at the top of a function.
 * When the function returns, it will go out of scope, and release the
 * mutex.
 */
 
typedef Mutex::Autolock AutoMutex;

// ---------------------------------------------------------------------------
}; // namespace android
// ---------------------------------------------------------------------------

#endif // _LIBS_UTILS_MUTEX_H

";i:1;s:3:"cpp";i:2;N;}i:2;i:5165;}i:69;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8924;}i:70;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:8924;}}